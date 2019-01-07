.class final Lcom/alibaba/android/oa/impl/OAInterfaceImpl$1;
.super Ljava/lang/Object;
.source "OAInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/oa/impl/OAInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/impl/OAInterfaceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/impl/OAInterfaceImpl;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$1;->b:Lcom/alibaba/android/oa/impl/OAInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 199
    invoke-static {}, Leel;->f()Leek;

    move-result-object v1

    invoke-interface {v1}, Leek;->a()Ljava/util/List;

    move-result-object v0

    .line 200
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$1;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 201
    return-void
.end method
