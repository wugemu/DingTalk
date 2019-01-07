.class public final Lkqe;
.super Ljava/lang/Object;
.source "DateTime.java"


# instance fields
.field public final a:Ljava/util/Date;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 7
    .param p1, "yearString"    # Ljava/lang/String;
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "timeZone"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1052
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 40
    :goto_0
    iput v0, p0, Lkqe;->b:I

    .line 41
    iget v1, p0, Lkqe;->b:I

    .line 1067
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string/jumbo v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1068
    add-int/lit8 v2, p2, -0x1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1069
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1071
    const/high16 v1, -0x80000000

    if-eq p7, v1, :cond_0

    .line 1072
    div-int/lit8 v1, p7, 0x64

    mul-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v2, p7, 0x64

    add-int/2addr v1, v2

    .line 1073
    const/16 v2, 0xc

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 1076
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lkqe;->a:Ljava/util/Date;

    .line 42
    iput p2, p0, Lkqe;->c:I

    .line 43
    iput p3, p0, Lkqe;->d:I

    .line 44
    iput p4, p0, Lkqe;->e:I

    .line 45
    iput p5, p0, Lkqe;->f:I

    .line 46
    iput p6, p0, Lkqe;->g:I

    .line 47
    iput p7, p0, Lkqe;->h:I

    .line 48
    return-void

    .line 1055
    :pswitch_0
    if-ltz v0, :cond_1

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 1056
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_0

    .line 1058
    :cond_1
    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    .line 1060
    :pswitch_1
    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    if-ne p0, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 139
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 142
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 143
    check-cast v0, Lkqe;

    .line 144
    .local v0, "other":Lkqe;
    iget-object v3, p0, Lkqe;->a:Ljava/util/Date;

    if-nez v3, :cond_4

    .line 145
    iget-object v3, v0, Lkqe;->a:Ljava/util/Date;

    if-eqz v3, :cond_5

    move v1, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    iget-object v3, p0, Lkqe;->a:Ljava/util/Date;

    iget-object v4, v0, Lkqe;->a:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    iget v3, p0, Lkqe;->d:I

    iget v4, v0, Lkqe;->d:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 150
    goto :goto_0

    .line 151
    :cond_6
    iget v3, p0, Lkqe;->e:I

    iget v4, v0, Lkqe;->e:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 152
    goto :goto_0

    .line 153
    :cond_7
    iget v3, p0, Lkqe;->f:I

    iget v4, v0, Lkqe;->f:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 154
    goto :goto_0

    .line 155
    :cond_8
    iget v3, p0, Lkqe;->c:I

    iget v4, v0, Lkqe;->c:I

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 156
    goto :goto_0

    .line 157
    :cond_9
    iget v3, p0, Lkqe;->g:I

    iget v4, v0, Lkqe;->g:I

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 158
    goto :goto_0

    .line 159
    :cond_a
    iget v3, p0, Lkqe;->h:I

    iget v4, v0, Lkqe;->h:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_b
    iget v3, p0, Lkqe;->b:I

    iget v4, v0, Lkqe;->b:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 162
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 124
    iget-object v1, p0, Lkqe;->a:Ljava/util/Date;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 125
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lkqe;->d:I

    add-int v0, v1, v2

    .line 126
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lkqe;->e:I

    add-int v0, v1, v2

    .line 127
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lkqe;->f:I

    add-int v0, v1, v2

    .line 128
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lkqe;->c:I

    add-int v0, v1, v2

    .line 129
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lkqe;->g:I

    add-int v0, v1, v2

    .line 130
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lkqe;->h:I

    add-int v0, v1, v2

    .line 131
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lkqe;->b:I

    add-int v0, v1, v2

    .line 132
    return v0

    .line 124
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lkqe;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    iget v1, p0, Lkqe;->b:I

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1088
    iget v1, p0, Lkqe;->c:I

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1092
    iget v1, p0, Lkqe;->d:I

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1096
    iget v1, p0, Lkqe;->e:I

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1100
    iget v1, p0, Lkqe;->f:I

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1104
    iget v1, p0, Lkqe;->g:I

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1108
    iget v1, p0, Lkqe;->h:I

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
