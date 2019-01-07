.class final Lbru$2;
.super Ljava/lang/Object;
.source "CacheUpdater.java"

# interfaces
.implements Lhpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbru;


# direct methods
.method constructor <init>(Lbru;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbru;

    .prologue
    .line 119
    iput-object p1, p0, Lbru$2;->b:Lbru;

    iput-object p2, p0, Lbru$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 122
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "htmlString":Ljava/lang/String;
    iget-object v2, p0, Lbru$2;->b:Lbru;

    invoke-static {v2, v0}, Lbru;->a(Lbru;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "resourceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lbru$2;->b:Lbru;

    iget-object v3, p0, Lbru$2;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lbru;->a(Lbru;Ljava/lang/String;Ljava/util/List;)V

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lbru$2;->b:Lbru;

    iget-object v1, p0, Lbru$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbru;->a(Lbru;Ljava/lang/String;Ljava/util/List;)V

    .line 130
    return-void
.end method
