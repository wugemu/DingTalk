.class public final Lguq;
.super Ljava/lang/Object;
.source "ResumeObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgup;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lguk;)Lguq;
    .locals 9
    .param p0, "model"    # Lguk;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 99
    if-nez p0, :cond_0

    move-object v2, v3

    .line 136
    :goto_0
    return-object v2

    .line 103
    :cond_0
    new-instance v2, Lguq;

    invoke-direct {v2}, Lguq;-><init>()V

    .line 105
    .local v2, "object":Lguq;
    iget-object v4, p0, Lguk;->a:Ljava/lang/String;

    iput-object v4, v2, Lguq;->l:Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lguk;->b:Ljava/lang/String;

    iput-object v4, v2, Lguq;->m:Ljava/lang/String;

    .line 107
    iget-object v4, p0, Lguk;->c:Ljava/lang/String;

    iput-object v4, v2, Lguq;->a:Ljava/lang/String;

    .line 108
    iget-object v4, p0, Lguk;->d:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v4, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v4

    .line 108
    iput-boolean v4, v2, Lguq;->b:Z

    .line 109
    iget-object v4, p0, Lguk;->e:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v4, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v4

    .line 109
    iput-boolean v4, v2, Lguq;->c:Z

    .line 110
    iget-object v4, p0, Lguk;->f:Ljava/lang/Long;

    .line 2044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 110
    iput-wide v4, v2, Lguq;->n:J

    .line 111
    iget-object v4, p0, Lguk;->g:Ljava/lang/String;

    iput-object v4, v2, Lguq;->d:Ljava/lang/String;

    .line 112
    iget-object v4, p0, Lguk;->h:Ljava/lang/String;

    iput-object v4, v2, Lguq;->e:Ljava/lang/String;

    .line 113
    iget-object v4, p0, Lguk;->i:Ljava/lang/String;

    iput-object v4, v2, Lguq;->f:Ljava/lang/String;

    .line 114
    iget-object v4, p0, Lguk;->j:Ljava/lang/String;

    iput-object v4, v2, Lguq;->o:Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lguk;->k:Ljava/lang/String;

    iput-object v4, v2, Lguq;->p:Ljava/lang/String;

    .line 116
    iget-object v4, p0, Lguk;->l:Ljava/lang/String;

    iput-object v4, v2, Lguq;->g:Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lguk;->m:Ljava/lang/String;

    iput-object v4, v2, Lguq;->h:Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lguk;->o:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lguq;->i:Ljava/util/List;

    .line 121
    iget-object v4, p0, Lguk;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgui;

    .line 122
    .local v0, "introducerModel":Lgui;
    if-eqz v0, :cond_1

    .line 2045
    if-nez v0, :cond_2

    move-object v1, v3

    .line 126
    .local v1, "introducerObject":Lgup;
    :goto_2
    if-eqz v1, :cond_1

    .line 127
    iget-object v5, v2, Lguq;->i:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2049
    .end local v1    # "introducerObject":Lgup;
    :cond_2
    new-instance v1, Lgup;

    invoke-direct {v1}, Lgup;-><init>()V

    .line 2051
    iget-object v5, v0, Lgui;->a:Ljava/lang/String;

    iput-object v5, v1, Lgup;->a:Ljava/lang/String;

    .line 2052
    iget-object v5, v0, Lgui;->b:Ljava/lang/String;

    iput-object v5, v1, Lgup;->b:Ljava/lang/String;

    .line 2053
    iget-object v5, v0, Lgui;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v5, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 2053
    iput-boolean v5, v1, Lgup;->c:Z

    .line 2054
    iget-object v5, v0, Lgui;->d:Ljava/lang/String;

    iput-object v5, v1, Lgup;->d:Ljava/lang/String;

    .line 2055
    iget-object v5, v0, Lgui;->e:Ljava/lang/Integer;

    .line 3033
    invoke-static {v5, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 2055
    iput v5, v1, Lgup;->e:I

    .line 2056
    iget-object v5, v0, Lgui;->f:Ljava/lang/String;

    iput-object v5, v1, Lgup;->f:Ljava/lang/String;

    .line 2057
    iget-object v5, v0, Lgui;->g:Ljava/lang/String;

    iput-object v5, v1, Lgup;->g:Ljava/lang/String;

    goto :goto_2

    .line 132
    .end local v0    # "introducerModel":Lgui;
    :cond_3
    iget-object v3, p0, Lguk;->p:Ljava/lang/String;

    iput-object v3, v2, Lguq;->q:Ljava/lang/String;

    .line 133
    iget-object v3, p0, Lguk;->q:Ljava/lang/String;

    iput-object v3, v2, Lguq;->j:Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lguk;->r:Ljava/lang/String;

    iput-object v3, v2, Lguq;->k:Ljava/lang/String;

    goto/16 :goto_0
.end method
