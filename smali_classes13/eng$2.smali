.class final Leng$2;
.super Ljava/lang/Object;
.source "AssureSyncHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leng;->a(Ljava/util/List;Lcou;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcou;

.field final synthetic c:Leng;


# direct methods
.method constructor <init>(Leng;Ljava/util/List;Lcou;)V
    .locals 0
    .param p1, "this$0"    # Leng;

    .prologue
    .line 95
    iput-object p1, p0, Leng$2;->c:Leng;

    iput-object p2, p0, Leng$2;->a:Ljava/util/List;

    iput-object p3, p0, Leng$2;->b:Lcou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget-object v2, p0, Leng$2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 99
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    invoke-static {}, Lenf;->a()Lenh;

    move-result-object v1

    .line 100
    .local v1, "presenter":Lenh;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lenh;->a(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    goto :goto_0

    .line 105
    .end local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v1    # "presenter":Lenh;
    :cond_1
    iget-object v2, p0, Leng$2;->b:Lcou;

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Leng$2;->b:Lcou;

    invoke-interface {v2}, Lcou;->a()V

    .line 108
    :cond_2
    return-void
.end method
