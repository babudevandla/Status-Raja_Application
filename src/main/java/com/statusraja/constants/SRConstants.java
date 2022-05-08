package com.statusraja.constants;

import java.util.Objects;
import java.util.function.Predicate;

import org.apache.commons.lang3.StringUtils;

public class SRConstants {

	public static Predicate<Object> objNotNull=(obj) -> Objects.nonNull(obj);
	public static Predicate<Object> objNull=(obj) -> obj==null;
	public static Predicate<String> strNotNull=(str) -> StringUtils.isNotBlank(str);
	public static Predicate<String> strNull=(str) -> StringUtils.isBlank(str);
}
