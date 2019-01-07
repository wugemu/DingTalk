.class public abstract Lcom/alibaba/alimei/orm/TableEntry;
.super Lcom/alibaba/alimei/orm/SelectableEntry;
.source "TableEntry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/SelectableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public save()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 21
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-static {v0}, Lcom/alibaba/alimei/orm/internal/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "databaseName":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "tableName":Ljava/lang/String;
    invoke-static {v1, v2, p0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    move-result-wide v4

    return-wide v4
.end method
