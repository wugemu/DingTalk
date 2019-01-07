.class public final Laca;
.super Ljava/lang/Object;
.source "MailNewSignatureDo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Laca;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:J

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v0, p0, Laca;->q:I

    .line 73
    iput v0, p0, Laca;->c:I

    .line 74
    iput-wide v2, p0, Laca;->o:J

    .line 75
    iput v0, p0, Laca;->d:I

    .line 76
    iput-wide v2, p0, Laca;->b:J

    .line 77
    iput v0, p0, Laca;->s:I

    .line 78
    return-void
.end method

.method private constructor <init>(Labr;)V
    .locals 6
    .param p1, "model"    # Labr;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p1, Labr;->a:Ljava/lang/Long;

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    iput-wide v0, p0, Laca;->b:J

    .line 86
    iget-object v0, p1, Labr;->b:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Laca;->c:I

    .line 87
    iget-object v0, p1, Labr;->c:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Laca;->d:I

    .line 89
    iget-object v0, p1, Labr;->d:Ljava/lang/String;

    iput-object v0, p0, Laca;->e:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Labr;->e:Ljava/lang/String;

    iput-object v0, p0, Laca;->f:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Labr;->f:Ljava/lang/String;

    iput-object v0, p0, Laca;->g:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Labr;->p:Ljava/lang/String;

    iput-object v0, p0, Laca;->m:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Labr;->g:Ljava/lang/String;

    iput-object v0, p0, Laca;->h:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Labr;->h:Ljava/lang/String;

    iput-object v0, p0, Laca;->i:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Labr;->k:Ljava/lang/String;

    iput-object v0, p0, Laca;->k:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Labr;->l:Ljava/lang/String;

    iput-object v0, p0, Laca;->l:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Labr;->i:Ljava/lang/String;

    iput-object v0, p0, Laca;->j:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Labr;->l:Ljava/lang/String;

    iput-object v0, p0, Laca;->l:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Labr;->o:Ljava/lang/String;

    iput-object v0, p0, Laca;->n:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Labr;->j:Ljava/lang/Long;

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    iput-wide v0, p0, Laca;->o:J

    .line 102
    iget-object v0, p1, Labr;->q:Ljava/lang/String;

    iput-object v0, p0, Laca;->p:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Labr;->m:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Laca;->q:I

    .line 105
    iget-object v0, p1, Labr;->n:Ljava/lang/String;

    iput-object v0, p0, Laca;->r:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Labr;->r:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Laca;->s:I

    .line 109
    iget-object v0, p1, Labr;->s:Ljava/lang/String;

    iput-object v0, p0, Laca;->t:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Labr;->t:Ljava/lang/String;

    iput-object v0, p0, Laca;->u:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Labr;->u:Ljava/lang/String;

    iput-object v0, p0, Laca;->v:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Labr;->v:Ljava/util/List;

    iput-object v0, p0, Laca;->a:Ljava/util/List;

    .line 116
    invoke-virtual {p0}, Laca;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Laca;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Laca;->e:Ljava/lang/String;

    invoke-static {v0}, Laca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laca;->j:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "mail_sign_"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "localKey":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "sign":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 219
    .end local v2    # "sign":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 212
    .restart local v2    # "sign":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "cmail_settings"

    invoke-virtual {v3, v4, v1}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "content":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 216
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxo$i;->dt_mail_default_signature:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 219
    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labr;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Labr;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 135
    :cond_1
    return-object v0

    .line 128
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "dos":Ljava/util/List;, "Ljava/util/List<Laca;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labr;

    .line 130
    .local v1, "model":Labr;
    if-eqz v1, :cond_3

    .line 131
    new-instance v3, Laca;

    invoke-direct {v3, v1}, Laca;-><init>(Labr;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "mail_sign_"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "localKey":Ljava/lang/String;
    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 p0, 0x0

    .line 322
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laca;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Labr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "dos":Ljava/util/List;, "Ljava/util/List<Laca;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 180
    :cond_1
    return-object v0

    .line 173
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "models":Ljava/util/List;, "Ljava/util/List<Labr;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laca;

    .line 175
    .local v1, "signatureDo":Laca;
    if-eqz v1, :cond_3

    .line 176
    invoke-virtual {v1}, Laca;->a()Labr;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()Labr;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 139
    new-instance v0, Labr;

    invoke-direct {v0}, Labr;-><init>()V

    .line 140
    .local v0, "model":Labr;
    iget-wide v4, p0, Laca;->b:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Labr;->a:Ljava/lang/Long;

    .line 141
    iget-wide v4, p0, Laca;->o:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    move-object v1, v2

    :goto_1
    iput-object v1, v0, Labr;->j:Ljava/lang/Long;

    .line 142
    iget v1, p0, Laca;->s:I

    if-gez v1, :cond_2

    move-object v1, v2

    :goto_2
    iput-object v1, v0, Labr;->r:Ljava/lang/Integer;

    .line 143
    iget v1, p0, Laca;->c:I

    if-gez v1, :cond_3

    move-object v1, v2

    :goto_3
    iput-object v1, v0, Labr;->b:Ljava/lang/Integer;

    .line 144
    iget v1, p0, Laca;->d:I

    if-gez v1, :cond_4

    move-object v1, v2

    :goto_4
    iput-object v1, v0, Labr;->c:Ljava/lang/Integer;

    .line 145
    iget v1, p0, Laca;->q:I

    if-gez v1, :cond_5

    :goto_5
    iput-object v2, v0, Labr;->m:Ljava/lang/Integer;

    .line 147
    iget-object v1, p0, Laca;->e:Ljava/lang/String;

    iput-object v1, v0, Labr;->d:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Laca;->f:Ljava/lang/String;

    iput-object v1, v0, Labr;->e:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Laca;->k:Ljava/lang/String;

    iput-object v1, v0, Labr;->k:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Laca;->g:Ljava/lang/String;

    iput-object v1, v0, Labr;->f:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Laca;->h:Ljava/lang/String;

    iput-object v1, v0, Labr;->g:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Laca;->l:Ljava/lang/String;

    iput-object v1, v0, Labr;->l:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Laca;->i:Ljava/lang/String;

    iput-object v1, v0, Labr;->h:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Laca;->j:Ljava/lang/String;

    iput-object v1, v0, Labr;->i:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Laca;->p:Ljava/lang/String;

    iput-object v1, v0, Labr;->q:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Laca;->m:Ljava/lang/String;

    iput-object v1, v0, Labr;->p:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Laca;->r:Ljava/lang/String;

    iput-object v1, v0, Labr;->n:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Laca;->n:Ljava/lang/String;

    iput-object v1, v0, Labr;->o:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Laca;->t:Ljava/lang/String;

    iput-object v1, v0, Labr;->s:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Laca;->u:Ljava/lang/String;

    iput-object v1, v0, Labr;->t:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Laca;->v:Ljava/lang/String;

    iput-object v1, v0, Labr;->u:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Laca;->a:Ljava/util/List;

    iput-object v1, v0, Labr;->v:Ljava/util/List;

    .line 165
    return-object v0

    .line 140
    :cond_0
    iget-wide v4, p0, Laca;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_1
    iget-wide v4, p0, Laca;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 142
    :cond_2
    iget v1, p0, Laca;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 143
    :cond_3
    iget v1, p0, Laca;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    .line 144
    :cond_4
    iget v1, p0, Laca;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    .line 145
    :cond_5
    iget v1, p0, Laca;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isSelected"    # Z

    .prologue
    .line 192
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Laca;->d:I

    .line 193
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 200
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Laca;->q:I

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Laca;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 188
    iget v1, p0, Laca;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Laca;->e()Laca;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 24
    check-cast p1, Laca;

    .line 1232
    iget v0, p0, Laca;->c:I

    iget v1, p1, Laca;->c:I

    sub-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 196
    iget v1, p0, Laca;->q:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Laca;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 287
    new-instance v0, Laca;

    invoke-direct {v0}, Laca;-><init>()V

    .line 288
    .local v0, "copy":Laca;
    iget-wide v2, p0, Laca;->b:J

    iput-wide v2, v0, Laca;->b:J

    .line 289
    iget-object v1, p0, Laca;->e:Ljava/lang/String;

    iput-object v1, v0, Laca;->e:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Laca;->u:Ljava/lang/String;

    iput-object v1, v0, Laca;->u:Ljava/lang/String;

    .line 291
    iget v1, p0, Laca;->d:I

    iput v1, v0, Laca;->d:I

    .line 292
    iget v1, p0, Laca;->c:I

    iput v1, v0, Laca;->c:I

    .line 293
    iget v1, p0, Laca;->s:I

    iput v1, v0, Laca;->s:I

    .line 294
    iget-object v1, p0, Laca;->n:Ljava/lang/String;

    iput-object v1, v0, Laca;->n:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Laca;->r:Ljava/lang/String;

    iput-object v1, v0, Laca;->r:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Laca;->t:Ljava/lang/String;

    iput-object v1, v0, Laca;->t:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Laca;->v:Ljava/lang/String;

    iput-object v1, v0, Laca;->v:Ljava/lang/String;

    .line 299
    iget v1, p0, Laca;->q:I

    iput v1, v0, Laca;->q:I

    .line 301
    iget-object v1, p0, Laca;->p:Ljava/lang/String;

    iput-object v1, v0, Laca;->p:Ljava/lang/String;

    .line 302
    iget-wide v2, p0, Laca;->o:J

    iput-wide v2, v0, Laca;->o:J

    .line 303
    iget-object v1, p0, Laca;->m:Ljava/lang/String;

    iput-object v1, v0, Laca;->m:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Laca;->g:Ljava/lang/String;

    iput-object v1, v0, Laca;->g:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Laca;->k:Ljava/lang/String;

    iput-object v1, v0, Laca;->k:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Laca;->h:Ljava/lang/String;

    iput-object v1, v0, Laca;->h:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Laca;->l:Ljava/lang/String;

    iput-object v1, v0, Laca;->l:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Laca;->f:Ljava/lang/String;

    iput-object v1, v0, Laca;->f:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Laca;->i:Ljava/lang/String;

    iput-object v1, v0, Laca;->i:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Laca;->j:Ljava/lang/String;

    iput-object v1, v0, Laca;->j:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Laca;->a:Ljava/util/List;

    iput-object v1, v0, Laca;->a:Ljava/util/List;

    .line 314
    return-object v0
.end method
