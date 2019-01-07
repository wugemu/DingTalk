.class final Ldyc$6;
.super Lcmg;
.source "ImgResAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldyc;->a(JLjava/lang/String;JJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldsz;",
        "Ldta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyc;


# direct methods
.method constructor <init>(Ldyc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyc;

    .prologue
    .line 328
    .local p2, "x0":Lcma;, "Lcma<Ldta;>;"
    iput-object p1, p0, Ldyc$6;->a:Ldyc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 328
    check-cast p1, Ldsz;

    .line 2024
    if-nez p1, :cond_0

    .line 2025
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2028
    :cond_0
    new-instance v1, Ldta;

    invoke-direct {v1}, Ldta;-><init>()V

    .line 2029
    iget-object v0, p1, Ldsz;->b:Ljava/lang/Long;

    .line 3044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2029
    iput-wide v2, v1, Ldta;->b:J

    .line 2030
    iget-object v0, p1, Ldsz;->c:Ljava/lang/Boolean;

    .line 4022
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2030
    iput-boolean v0, v1, Ldta;->c:Z

    .line 2031
    iget-object v0, p1, Ldsz;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Ldta;->a:Ljava/util/List;

    .line 2033
    iget-object v0, p1, Ldsz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsy;

    .line 2034
    if-eqz v0, :cond_1

    .line 2037
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->fromIDL(Ldsy;)Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    move-result-object v0

    .line 2038
    if-eqz v0, :cond_1

    .line 2039
    iget-object v3, v1, Ldta;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2043
    :cond_2
    iget-object v0, p1, Ldsz;->d:Ljava/lang/Long;

    .line 4044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2043
    iput-wide v2, v1, Ldta;->d:J

    move-object v0, v1

    .line 328
    goto :goto_0
.end method
