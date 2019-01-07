.class public Lcom/alibaba/alimei/idl/exception/UnKnowException;
.super Lzr;
.source "UnKnowException.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Lzr;-><init>()V

    .line 11
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/alimei/idl/exception/UnKnowException;->a:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    iput-object v0, p0, Lcom/alibaba/alimei/idl/exception/UnKnowException;->b:Ljava/lang/String;

    .line 13
    return-void
.end method
