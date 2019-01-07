.class public abstract Lcom/alibaba/android/rimet/biz/SplashActivity$a;
.super Ljava/lang/Object;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivity$a;->mActivity:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract onCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract onDestroy()V
.end method

.method protected abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method protected abstract onPause()V
.end method

.method protected abstract onResume()V
.end method

.method protected abstract onStart()V
.end method
