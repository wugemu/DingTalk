.class public final Lhgp;
.super Ljava/lang/Object;
.source "UniActionRequest.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/alibaba/fastjson/JSONObject;

.field public c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lhgp;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lhgp;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 19
    return-void
.end method
