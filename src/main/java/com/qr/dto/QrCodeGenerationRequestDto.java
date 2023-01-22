package com.qr.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@JacksonStdImpl
@NoArgsConstructor
@AllArgsConstructor
public class QrCodeGenerationRequestDto {

	@Schema(description = "unique eventId", required = true, example = "event id")
	@NotBlank(message = "title must not be empty")
	@Size(max = 50, message = "event Id should not exceed more than 50 characters")
	private String eventId;

	@Schema(description = "Message you want to decode", required = true, example = "27")
	@NotNull(message = "message must not be empty")
	private Integer tableNo;

	@Schema(description = "Name of person generating the QR code ", required = true, example = "Narendra Kumar")
	@NotBlank(message = "generated-by-name must not be empty")
	private String generatedByName;

	@Schema(description = "Name of person(s) for which code is being generated", required = true, example = "For Whole World")
	@NotBlank(message = "generated-for-name must not be empty")
	private String generatedForName;
	
	@Schema(description = "url for which code redirect the user for selection", required = true, example = "http://google.com")
	@NotBlank(message = "targetPage must not be empty")
	private String targetPage;

}
