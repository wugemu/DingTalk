.class final Lhed$2;
.super Ljava/lang/Object;
.source "TransitionDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhed;->a(Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/AnimatorSet;

.field final synthetic b:Lhed;


# direct methods
.method constructor <init>(Lhed;Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "this$0"    # Lhed;

    .prologue
    .line 197
    iput-object p1, p0, Lhed$2;->b:Lhed;

    iput-object p2, p0, Lhed$2;->a:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lhed$2;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 204
    return-void
.end method
