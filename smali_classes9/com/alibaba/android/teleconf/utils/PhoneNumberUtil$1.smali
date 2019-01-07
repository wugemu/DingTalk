.class public final Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;
.super Ljava/util/HashMap;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string/jumbo v0, "010"

    const-string/jumbo v1, "\u5317\u4eac"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v0, "020"

    const-string/jumbo v1, "\u5e7f\u5dde"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v0, "021"

    const-string/jumbo v1, "\u4e0a\u6d77"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v0, "022"

    const-string/jumbo v1, "\u5929\u6d25"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v0, "023"

    const-string/jumbo v1, "\u91cd\u5e86"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v0, "024"

    const-string/jumbo v1, "\u6c88\u9633"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v0, "025"

    const-string/jumbo v1, "\u5357\u4eac"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v0, "027"

    const-string/jumbo v1, "\u6b66\u6c49"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v0, "028"

    const-string/jumbo v1, "\u6210\u90fd"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v0, "029"

    const-string/jumbo v1, "\u897f\u5b89"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/utils/PhoneNumberUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
