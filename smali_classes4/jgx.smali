.class public final Ljgx;
.super Ljava/lang/Object;
.source "WeiboShareSDK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljgp;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 1044
    new-instance v0, Ljgw;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljgw;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    return-object v0
.end method
