.class public Lcom/android/dingtalk/share/ddsharemodule/DDShareApiFactory;
.super Ljava/lang/Object;
.source "DDShareApiFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDDShareApi(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/dingtalk/share/ddsharemodule/IDDShareApi;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "needSignatureCheck"    # Z

    .prologue
    .line 18
    new-instance v0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method
