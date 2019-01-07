.class public abstract Lcom/tencent/open/b;
.super Landroid/app/Dialog;
.source "ProGuard"


# instance fields
.field protected c:Ljta;

.field protected final d:Landroid/webkit/WebChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/tencent/open/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/open/b$1;-><init>(Lcom/tencent/open/b;)V

    iput-object v0, p0, Lcom/tencent/open/b;->d:Landroid/webkit/WebChromeClient;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 21
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    new-instance v0, Lcom/tencent/open/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/open/b$1;-><init>(Lcom/tencent/open/b;)V

    iput-object v0, p0, Lcom/tencent/open/b;->d:Landroid/webkit/WebChromeClient;

    .line 22
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Ljta;

    invoke-direct {v0}, Ljta;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/b;->c:Ljta;

    .line 28
    return-void
.end method
