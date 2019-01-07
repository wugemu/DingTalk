.class final Lhfw$5;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfw;->a(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lhfw$5;->a:Ljava/lang/String;

    iput p2, p0, Lhfw$5;->b:I

    iput p3, p0, Lhfw$5;->c:I

    iput-object p4, p0, Lhfw$5;->d:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lhfw$5;->a:Ljava/lang/String;

    iget v1, p0, Lhfw$5;->b:I

    iget v2, p0, Lhfw$5;->c:I

    iget-object v3, p0, Lhfw$5;->d:Landroid/webkit/ValueCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/extension/UCCore;->preloadResource(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V

    .line 375
    return-void
.end method
