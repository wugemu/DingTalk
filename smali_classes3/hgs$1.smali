.class public final Lhgs$1;
.super Ljava/lang/Object;
.source "UniPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgk;

.field final synthetic b:Ljava/lang/reflect/Method;

.field final synthetic c:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic d:Lhgo;

.field final synthetic e:Lhgs;


# direct methods
.method public constructor <init>(Lhgs;Lhgk;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/JSONObject;Lhgo;)V
    .locals 0
    .param p1, "this$0"    # Lhgs;

    .prologue
    .line 78
    iput-object p1, p0, Lhgs$1;->e:Lhgs;

    iput-object p2, p0, Lhgs$1;->a:Lhgk;

    iput-object p3, p0, Lhgs$1;->b:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lhgs$1;->c:Lcom/alibaba/fastjson/JSONObject;

    iput-object p5, p0, Lhgs$1;->d:Lhgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lhgs$1;->e:Lhgs;

    iget-object v1, p0, Lhgs$1;->a:Lhgk;

    iget-object v2, p0, Lhgs$1;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lhgs$1;->c:Lcom/alibaba/fastjson/JSONObject;

    iget-object v4, p0, Lhgs$1;->d:Lhgo;

    invoke-static {v0, v1, v2, v3, v4}, Lhgs;->a(Lhgs;Lhgk;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/JSONObject;Lhgo;)V

    .line 82
    return-void
.end method
