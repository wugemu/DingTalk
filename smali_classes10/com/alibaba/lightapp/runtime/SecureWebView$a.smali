.class public Lcom/alibaba/lightapp/runtime/SecureWebView$a;
.super Ljava/lang/Object;
.source "SecureWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/SecureWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/SecureWebView;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/SecureWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/SecureWebView;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/SecureWebView$a;->a:Lcom/alibaba/lightapp/runtime/SecureWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method
