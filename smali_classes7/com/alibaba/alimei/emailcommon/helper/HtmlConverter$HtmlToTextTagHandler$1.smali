.class public final Lcom/alibaba/alimei/emailcommon/helper/HtmlConverter$HtmlToTextTagHandler$1;
.super Ljava/util/HashSet;
.source "HtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 64
    const-string/jumbo v0, "style"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/helper/HtmlConverter$HtmlToTextTagHandler$1;->add(Ljava/lang/Object;)Z

    .line 65
    const-string/jumbo v0, "script"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/helper/HtmlConverter$HtmlToTextTagHandler$1;->add(Ljava/lang/Object;)Z

    .line 66
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/helper/HtmlConverter$HtmlToTextTagHandler$1;->add(Ljava/lang/Object;)Z

    .line 67
    const-string/jumbo v0, "!"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/helper/HtmlConverter$HtmlToTextTagHandler$1;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method
