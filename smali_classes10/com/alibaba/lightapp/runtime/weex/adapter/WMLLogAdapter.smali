.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WMLLogAdapter;
.super Ljava/lang/Object;
.source "WMLLogAdapter.java"

# interfaces
.implements Ljpt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p1, p2}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1, p2}, Ljox;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p1, p2}, Ljox;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p1, p2}, Ljox;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
