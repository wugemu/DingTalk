.class public final Los;
.super Ljava/lang/Object;
.source "AetherLog.java"


# static fields
.field protected static final a:Lcom/alibaba/doraemon/Logger;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "aether"

    invoke-static {v0}, Lcom/alibaba/doraemon/Logger;->getLogger(Ljava/lang/String;)Lcom/alibaba/doraemon/Logger;

    move-result-object v0

    sput-object v0, Los;->a:Lcom/alibaba/doraemon/Logger;

    .line 17
    const/4 v0, 0x2

    sput v0, Los;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    sget v0, Los;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 109
    sget-object v0, Los;->a:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 130
    sget v0, Los;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 131
    sget-object v0, Los;->a:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
