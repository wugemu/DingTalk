.class final Lcom/uc/webview/export/internal/android/h$a;
.super Lcom/uc/webview/export/WebHistoryItem;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/h;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/h;Landroid/webkit/WebHistoryItem;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/h$a;->a:Lcom/uc/webview/export/internal/android/h;

    invoke-direct {p0}, Lcom/uc/webview/export/WebHistoryItem;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/h$a;->mItem:Landroid/webkit/WebHistoryItem;

    .line 13
    return-void
.end method
