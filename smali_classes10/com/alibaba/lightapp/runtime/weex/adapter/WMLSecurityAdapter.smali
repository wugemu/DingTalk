.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WMLSecurityAdapter;
.super Ljava/lang/Object;
.source "WMLSecurityAdapter.java"

# interfaces
.implements Ljpx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decryptAppCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "securityStr"    # Ljava/lang/String;

    .prologue
    .line 34
    return-object p1
.end method
