.class public final Lcom/alibaba/android/ding/utils/ContactChooseCallbackUtils$3;
.super Ljava/lang/Object;
.source "ContactChooseCallbackUtils.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelectedCountExceedsLimit(II)V
    .locals 1
    .param p1, "limit"    # I
    .param p2, "selectedCount"    # I

    .prologue
    .line 1134
    const-string/jumbo v0, "ding_send_limit_single"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 31
    return-void
.end method
