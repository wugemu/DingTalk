.class final Lguh$3;
.super Lcmg;
.source "RecruitmentDataRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lguh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lguo;",
        "Lguu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lguh;


# direct methods
.method constructor <init>(Lguh;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lguh;

    .prologue
    .line 75
    .local p2, "x0":Lcma;, "Lcma<Lguu;>;"
    iput-object p1, p0, Lguh$3;->a:Lguh;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 75
    check-cast p1, Lguo;

    .line 2015
    if-nez p1, :cond_0

    .line 2016
    :goto_0
    return-object v1

    .line 2018
    :cond_0
    new-instance v2, Lguu;

    invoke-direct {v2}, Lguu;-><init>()V

    .line 2019
    iget-object v3, p1, Lguo;->a:Lgum;

    .line 2055
    if-nez v3, :cond_1

    move-object v0, v1

    .line 2019
    :goto_1
    iput-object v0, v2, Lguu;->a:Lgus;

    .line 2020
    iget-object v0, p1, Lguo;->b:Lgun;

    .line 5023
    if-nez v0, :cond_2

    .line 2020
    :goto_2
    iput-object v1, v2, Lguu;->b:Lgut;

    .line 2021
    iget-object v0, p1, Lguo;->c:Ljava/lang/String;

    iput-object v0, v2, Lguu;->c:Ljava/lang/String;

    move-object v1, v2

    .line 75
    goto :goto_0

    .line 2058
    :cond_1
    new-instance v0, Lgus;

    invoke-direct {v0}, Lgus;-><init>()V

    .line 2059
    iget-object v4, v3, Lgum;->a:Ljava/lang/String;

    iput-object v4, v0, Lgus;->a:Ljava/lang/String;

    .line 2060
    iget-object v4, v3, Lgum;->b:Ljava/lang/String;

    iput-object v4, v0, Lgus;->b:Ljava/lang/String;

    .line 2061
    iget-object v4, v3, Lgum;->c:Ljava/lang/String;

    iput-object v4, v0, Lgus;->c:Ljava/lang/String;

    .line 2062
    iget-object v4, v3, Lgum;->d:Ljava/lang/Byte;

    invoke-static {v4}, Lcoc;->a(Ljava/lang/Byte;)B

    move-result v4

    iput-byte v4, v0, Lgus;->d:B

    .line 2063
    iget-object v4, v3, Lgum;->e:Ljava/lang/Integer;

    .line 3033
    invoke-static {v4, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 2063
    iput v4, v0, Lgus;->e:I

    .line 2064
    iget-object v4, v3, Lgum;->f:Ljava/lang/String;

    iput-object v4, v0, Lgus;->f:Ljava/lang/String;

    .line 2065
    iget-object v4, v3, Lgum;->g:Ljava/lang/String;

    iput-object v4, v0, Lgus;->g:Ljava/lang/String;

    .line 2066
    iget-object v4, v3, Lgum;->h:Ljava/lang/String;

    iput-object v4, v0, Lgus;->h:Ljava/lang/String;

    .line 2067
    iget-object v4, v3, Lgum;->i:Ljava/lang/String;

    iput-object v4, v0, Lgus;->i:Ljava/lang/String;

    .line 2068
    iget-object v4, v3, Lgum;->j:Ljava/lang/String;

    iput-object v4, v0, Lgus;->j:Ljava/lang/String;

    .line 2069
    iget-object v4, v3, Lgum;->k:Ljava/lang/String;

    iput-object v4, v0, Lgus;->k:Ljava/lang/String;

    .line 2070
    iget-object v4, v3, Lgum;->l:Ljava/lang/String;

    iput-object v4, v0, Lgus;->l:Ljava/lang/String;

    .line 2071
    iget-object v4, v3, Lgum;->m:Ljava/lang/Long;

    .line 3044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2071
    iput-wide v4, v0, Lgus;->m:J

    .line 2072
    iget-object v4, v3, Lgum;->n:Ljava/lang/String;

    iput-object v4, v0, Lgus;->n:Ljava/lang/String;

    .line 2073
    iget-object v4, v3, Lgum;->o:Ljava/lang/String;

    iput-object v4, v0, Lgus;->o:Ljava/lang/String;

    .line 2074
    iget-object v3, v3, Lgum;->p:Ljava/lang/Integer;

    .line 4033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 2074
    iput v3, v0, Lgus;->p:I

    goto :goto_1

    .line 5026
    :cond_2
    new-instance v1, Lgut;

    invoke-direct {v1}, Lgut;-><init>()V

    .line 5027
    iget-object v3, v0, Lgun;->a:Ljava/util/List;

    invoke-static {v3}, Lgur;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lgut;->a:Ljava/util/List;

    .line 5028
    iget-object v3, v0, Lgun;->b:Ljava/util/List;

    iput-object v3, v1, Lgut;->b:Ljava/util/List;

    .line 5029
    iget-object v3, v0, Lgun;->c:Ljava/lang/String;

    iput-object v3, v1, Lgut;->c:Ljava/lang/String;

    .line 5030
    iget-object v3, v0, Lgun;->d:Ljava/util/List;

    iput-object v3, v1, Lgut;->d:Ljava/util/List;

    .line 5031
    iget-object v3, v0, Lgun;->e:Ljava/util/List;

    iput-object v3, v1, Lgut;->e:Ljava/util/List;

    .line 5032
    iget-object v0, v0, Lgun;->f:Ljava/util/List;

    invoke-static {v0}, Lgur;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lgut;->f:Ljava/util/List;

    goto/16 :goto_2
.end method
