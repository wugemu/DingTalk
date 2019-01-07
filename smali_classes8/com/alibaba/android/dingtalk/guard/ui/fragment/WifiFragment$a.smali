.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;
.super Ljava/lang/Object;
.source "WifiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/app/Dialog;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 464
    :cond_0
    return-void
.end method
