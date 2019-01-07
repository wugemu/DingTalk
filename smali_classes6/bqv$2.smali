.class public final Lbqv$2;
.super Ljava/lang/Object;
.source "ToolbarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbqv;


# direct methods
.method public constructor <init>(Lbqv;)V
    .locals 0
    .param p1, "this$0"    # Lbqv;

    .prologue
    .line 112
    iput-object p1, p0, Lbqv$2;->a:Lbqv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lbqv$2;->a:Lbqv;

    .line 1029
    iget-object v0, v0, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    .line 115
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->d()V

    .line 116
    return-void
.end method
