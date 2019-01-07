.class final Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;
.super Ljava/lang/Object;
.source "Ripple2Layout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    .line 150
    :cond_0
    return-void
.end method
