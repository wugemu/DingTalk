.class final Ldea$2;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ldea;


# direct methods
.method constructor <init>(Ldea;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 623
    iput-object p1, p0, Ldea$2;->b:Ldea;

    iput-object p2, p0, Ldea$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 628
    .local v0, "current":J
    iget-object v2, p0, Ldea$2;->b:Ldea;

    .line 1095
    iget-wide v2, v2, Ldea;->e:J

    .line 628
    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 629
    iget-object v2, p0, Ldea$2;->b:Ldea;

    .line 2095
    iput-wide v0, v2, Ldea;->e:J

    .line 630
    iget-object v2, p0, Ldea$2;->b:Ldea;

    .line 3095
    invoke-virtual {v2}, Ldea;->a()Ldiz;

    move-result-object v3

    .line 630
    iget-object v2, p0, Ldea$2;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-virtual {v3, v2}, Ldiz;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Z

    .line 632
    :cond_0
    return-void
.end method
