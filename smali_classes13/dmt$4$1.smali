.class final Ldmt$4$1;
.super Ljava/lang/Object;
.source "LuckyTimeBannerManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldmt$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmt$4;


# direct methods
.method constructor <init>(Ldmt$4;)V
    .locals 0
    .param p1, "this$1"    # Ldmt$4;

    .prologue
    .line 267
    iput-object p1, p0, Ldmt$4$1;->a:Ldmt$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Ldmt$4$1;->a:Ldmt$4;

    iget-object v0, v0, Ldmt$4;->a:Ldmt;

    .line 1033
    iget-object v0, v0, Ldmt;->c:Landroid/app/Activity;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Ldmt$4$1;->a:Ldmt$4;

    iget-object v0, v0, Ldmt$4;->a:Ldmt;

    .line 2033
    iget-object v0, v0, Ldmt;->c:Landroid/app/Activity;

    .line 271
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Q()V

    .line 273
    :cond_0
    return-void
.end method
