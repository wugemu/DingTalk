.class public final Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;
.super Ljava/lang/Object;
.source "TabConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "tabItemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_0
    return-object p0
.end method

.method public final a()Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;-><init>()V

    .line 1143
    .local v0, "tabConfiguration":Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    invoke-static {v0, v2}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$002(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;I)I

    .line 1144
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$102(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1145
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$202(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$302(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1147
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$402(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1148
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$502(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 1149
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$602(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/util/List;)Ljava/util/List;

    .line 1150
    invoke-static {v0, v2}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$702(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Z)Z

    .line 1151
    iget v1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->g:I

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$802(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;I)I

    .line 1152
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->access$902(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    return-object v0
.end method
