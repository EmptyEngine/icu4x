#ifndef ICU4XUnitsConverter_H
#define ICU4XUnitsConverter_H

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "diplomat_runtime.h"

#include "ICU4XUnitsConverter.d.h"

#ifdef __cplusplus
namespace capi {
extern "C" {
#endif // __cplusplus


double ICU4XUnitsConverter_convert_f64(const ICU4XUnitsConverter* self, double value);

ICU4XUnitsConverter* ICU4XUnitsConverter_clone(const ICU4XUnitsConverter* self);

void ICU4XUnitsConverter_destroy(ICU4XUnitsConverter* self);


#ifdef __cplusplus
} // extern "C"
} // namespace capi
#endif // __cplusplus

#endif // ICU4XUnitsConverter_H
