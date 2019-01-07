.class public final Lhgl;
.super Ljava/lang/Object;
.source "UniChannelMessage.java"


# instance fields
.field public a:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lhgl;->a:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method
