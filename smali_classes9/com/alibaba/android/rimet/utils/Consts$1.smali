.class public final Lcom/alibaba/android/rimet/utils/Consts$1;
.super Ljava/util/HashMap;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelz;
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
    .line 244
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string/jumbo v0, "doc"

    const-string/jumbo v1, "application/msword"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string/jumbo v0, "docx"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string/jumbo v0, "xls"

    const-string/jumbo v1, "application/vnd.ms-excel"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v0, "xlsx"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v0, "ppt"

    const-string/jumbo v1, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v0, "pptx"

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v0, "pdf"

    const-string/jumbo v1, "application/pdf"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v0, "rar"

    const-string/jumbo v1, "application/x-rar-compressed"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v0, "txt"

    const-string/jumbo v1, "text/plain"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v0, "zip"

    const-string/jumbo v1, "application/zip"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/utils/Consts$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method
