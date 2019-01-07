.class final Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$2;
.super Ljava/lang/Object;
.source "ToolViewPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$2;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 120
    return-void
.end method
