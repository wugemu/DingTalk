.class public final Liwn;
.super Ljava/lang/Object;
.source "DTBuilder.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Liwn;->a:I

    .line 60
    iput p2, p0, Liwn;->b:I

    .line 61
    iput p3, p0, Liwn;->c:I

    .line 62
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Liwn;->a:I

    .line 51
    iput p2, p0, Liwn;->b:I

    .line 52
    iput p3, p0, Liwn;->c:I

    .line 53
    iput p4, p0, Liwn;->d:I

    .line 54
    iput p5, p0, Liwn;->e:I

    .line 55
    iput p6, p0, Liwn;->f:I

    .line 56
    return-void
.end method


# virtual methods
.method public final a()Liwq;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    invoke-virtual {p0}, Liwn;->b()V

    .line 83
    new-instance v0, Liwr;

    iget v1, p0, Liwn;->a:I

    iget v2, p0, Liwn;->b:I

    iget v3, p0, Liwn;->c:I

    iget v4, p0, Liwn;->d:I

    iget v5, p0, Liwn;->e:I

    iget v6, p0, Liwn;->f:I

    invoke-direct/range {v0 .. v6}, Liwr;-><init>(IIIIII)V

    return-object v0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v3, 0xc

    .line 121
    .line 1151
    iget v0, p0, Liwn;->f:I

    if-gez v0, :cond_0

    iget v0, p0, Liwn;->f:I

    add-int/lit8 v0, v0, -0x3b

    :goto_0
    div-int/lit8 v0, v0, 0x3c

    .line 1152
    iget v1, p0, Liwn;->f:I

    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr v1, v2

    iput v1, p0, Liwn;->f:I

    .line 1153
    iget v1, p0, Liwn;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Liwn;->e:I

    .line 1154
    iget v0, p0, Liwn;->e:I

    if-gez v0, :cond_1

    iget v0, p0, Liwn;->e:I

    add-int/lit8 v0, v0, -0x3b

    :goto_1
    div-int/lit8 v0, v0, 0x3c

    .line 1155
    iget v1, p0, Liwn;->e:I

    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr v1, v2

    iput v1, p0, Liwn;->e:I

    .line 1156
    iget v1, p0, Liwn;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Liwn;->d:I

    .line 1157
    iget v0, p0, Liwn;->d:I

    if-gez v0, :cond_2

    iget v0, p0, Liwn;->d:I

    add-int/lit8 v0, v0, -0x17

    :goto_2
    div-int/lit8 v0, v0, 0x18

    .line 1158
    iget v1, p0, Liwn;->d:I

    mul-int/lit8 v2, v0, 0x18

    sub-int/2addr v1, v2

    iput v1, p0, Liwn;->d:I

    .line 1159
    iget v1, p0, Liwn;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Liwn;->c:I

    .line 1162
    :goto_3
    iget v0, p0, Liwn;->c:I

    if-gtz v0, :cond_4

    .line 1163
    iget v0, p0, Liwn;->b:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    iget v0, p0, Liwn;->a:I

    :goto_4
    invoke-static {v0}, Liwp;->a(I)I

    move-result v0

    .line 1164
    iget v1, p0, Liwn;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Liwn;->c:I

    .line 1165
    iget v0, p0, Liwn;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Liwn;->a:I

    goto :goto_3

    .line 1151
    :cond_0
    iget v0, p0, Liwn;->f:I

    goto :goto_0

    .line 1154
    :cond_1
    iget v0, p0, Liwn;->e:I

    goto :goto_1

    .line 1157
    :cond_2
    iget v0, p0, Liwn;->d:I

    goto :goto_2

    .line 1163
    :cond_3
    iget v0, p0, Liwn;->a:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1167
    :cond_4
    iget v0, p0, Liwn;->b:I

    if-gtz v0, :cond_7

    .line 1168
    iget v0, p0, Liwn;->b:I

    div-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, -0x1

    .line 1169
    iget v1, p0, Liwn;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Liwn;->a:I

    .line 1170
    iget v1, p0, Liwn;->b:I

    mul-int/lit8 v0, v0, 0xc

    sub-int v0, v1, v0

    iput v0, p0, Liwn;->b:I

    .line 1177
    :cond_5
    :goto_5
    iget v0, p0, Liwn;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1178
    iget v0, p0, Liwn;->a:I

    invoke-static {v0}, Liwp;->a(I)I

    move-result v0

    .line 1179
    iget v1, p0, Liwn;->c:I

    if-le v1, v0, :cond_6

    .line 1180
    iget v1, p0, Liwn;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Liwn;->a:I

    .line 1181
    iget v1, p0, Liwn;->c:I

    sub-int v0, v1, v0

    iput v0, p0, Liwn;->c:I

    .line 1184
    :cond_6
    iget v0, p0, Liwn;->a:I

    iget v1, p0, Liwn;->b:I

    invoke-static {v0, v1}, Liwp;->a(II)I

    move-result v0

    .line 1185
    iget v1, p0, Liwn;->c:I

    if-le v1, v0, :cond_8

    .line 1186
    iget v1, p0, Liwn;->c:I

    sub-int v0, v1, v0

    iput v0, p0, Liwn;->c:I

    .line 1187
    iget v0, p0, Liwn;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Liwn;->b:I

    if-le v0, v3, :cond_5

    .line 1188
    iget v0, p0, Liwn;->b:I

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Liwn;->b:I

    .line 1189
    iget v0, p0, Liwn;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Liwn;->a:I

    goto :goto_5

    .line 1171
    :cond_7
    iget v0, p0, Liwn;->b:I

    if-le v0, v3, :cond_5

    .line 1172
    iget v0, p0, Liwn;->b:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xc

    .line 1173
    iget v1, p0, Liwn;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Liwn;->a:I

    .line 1174
    iget v1, p0, Liwn;->b:I

    mul-int/lit8 v0, v0, 0xc

    sub-int v0, v1, v0

    iput v0, p0, Liwn;->b:I

    goto :goto_5

    .line 123
    :cond_8
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 133
    instance-of v2, p1, Liwn;

    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 134
    check-cast v0, Liwn;

    .line 135
    .local v0, "that":Liwn;
    iget v2, p0, Liwn;->a:I

    iget v3, v0, Liwn;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Liwn;->b:I

    iget v3, v0, Liwn;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Liwn;->c:I

    iget v3, v0, Liwn;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Liwn;->d:I

    iget v3, v0, Liwn;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Liwn;->e:I

    iget v3, v0, Liwn;->e:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Liwn;->f:I

    iget v3, v0, Liwn;->f:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 145
    iget v0, p0, Liwn;->a:I

    shl-int/lit8 v0, v0, 0x4

    iget v1, p0, Liwn;->b:I

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Liwn;->c:I

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x5

    iget v1, p0, Liwn;->d:I

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Liwn;->e:I

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Liwn;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Liwn;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Liwn;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Liwn;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Liwn;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Liwn;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Liwn;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
