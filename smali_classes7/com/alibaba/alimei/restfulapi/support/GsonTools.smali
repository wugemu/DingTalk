.class public Lcom/alibaba/alimei/restfulapi/support/GsonTools;
.super Ljava/lang/Object;
.source "GsonTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGsonInstance()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method
