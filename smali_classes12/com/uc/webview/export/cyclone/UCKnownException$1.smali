.class Lcom/uc/webview/export/cyclone/UCKnownException$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/uc/webview/export/cyclone/UCKnownException;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/cyclone/UCKnownException;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException$1;->this$0:Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException$1;->this$0:Lcom/uc/webview/export/cyclone/UCKnownException;

    throw v0
.end method
