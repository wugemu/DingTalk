.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter;
.super Ljava/lang/Object;
.source "WMLAPIValidateAdapter.java"

# interfaces
.implements Ljpp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValidator()Ljpk;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAPIValidateAdapter;)V

    return-object v0
.end method

.method public onLicenseLaunch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 34
    return-void
.end method
