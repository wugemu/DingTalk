.class Lcom/alibaba/bee/impl/DBAdapter$5;
.super Ljava/lang/Object;
.source "DBAdapter.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/bee/impl/DBAdapter;->deleteDatabase(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/bee/impl/DBAdapter;

.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/bee/impl/DBAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/bee/impl/DBAdapter;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/alibaba/bee/impl/DBAdapter$5;->this$0:Lcom/alibaba/bee/impl/DBAdapter;

    iput-object p2, p0, Lcom/alibaba/bee/impl/DBAdapter$5;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "candidate"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 468
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/bee/impl/DBAdapter$5;->val$prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
