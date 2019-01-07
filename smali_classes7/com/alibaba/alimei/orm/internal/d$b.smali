.class final Lcom/alibaba/alimei/orm/internal/d$b;
.super Ljava/lang/Object;
.source "DatabaseModelInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/orm/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field p:Lcom/alibaba/alimei/orm/internal/TableInfo;

.field final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "tableModel":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->q:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->r:Ljava/util/ArrayList;

    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->p:Lcom/alibaba/alimei/orm/internal/TableInfo;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 93
    invoke-static {p1}, Lcom/alibaba/alimei/orm/internal/TableInfo;->newTableInfo(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/TableInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->p:Lcom/alibaba/alimei/orm/internal/TableInfo;

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "tableModel":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->p:Lcom/alibaba/alimei/orm/internal/TableInfo;

    if-nez v0, :cond_0

    .line 110
    invoke-static {p1}, Lcom/alibaba/alimei/orm/internal/TableInfo;->newTableInfo(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/TableInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->p:Lcom/alibaba/alimei/orm/internal/TableInfo;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->p:Lcom/alibaba/alimei/orm/internal/TableInfo;

    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/internal/TableInfo;->getDefaultTableName()Ljava/lang/String;

    move-result-object p3

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/d$b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_3
    return-object p3
.end method
