.class public final Lcom/taobao/windmill/bundle/container/frame/FrameType;
.super Ljava/lang/Object;
.source "FrameType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "isHomePage"    # Z

    .prologue
    .line 9
    const-string/jumbo v0, "priArea"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PriArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    .line 19
    :goto_0
    return-object v0

    .line 13
    :cond_0
    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PriArea2:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    goto :goto_0

    .line 16
    :cond_1
    if-eqz p1, :cond_2

    .line 17
    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PubArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    goto :goto_0

    .line 19
    :cond_2
    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PubArea2:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    goto :goto_0
.end method

.method public static a(Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    .prologue
    .line 25
    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PriArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PriArea2:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    if-ne v0, p0, :cond_1

    .line 26
    :cond_0
    const-string/jumbo v0, "priArea"

    .line 30
    :goto_0
    return-object v0

    .line 27
    :cond_1
    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PubArea:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    if-eq v0, p0, :cond_2

    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PubArea2:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    if-ne v0, p0, :cond_3

    .line 28
    :cond_2
    const-string/jumbo v0, "pubArea"

    goto :goto_0

    .line 30
    :cond_3
    const-string/jumbo v0, "pubArea"

    goto :goto_0
.end method
