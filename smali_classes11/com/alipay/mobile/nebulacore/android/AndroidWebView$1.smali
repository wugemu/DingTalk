.class Lcom/alipay/mobile/nebulacore/android/AndroidWebView$1;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/android/AndroidWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$1;->this$0:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
