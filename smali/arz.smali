.class public final Larz;
.super Lasy;
.source "CalendarInstanceObject.java"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Z

.field public E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/AlarmObject;",
            ">;"
        }
    .end annotation
.end field

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:J

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:J

.field public n:Z

.field public o:J

.field public p:J

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lasy;-><init>()V

    .line 51
    return-void
.end method

.method public static a(Lasc;Lary;JJ)Larz;
    .locals 4
    .param p0, "calendarObject"    # Lasc;
    .param p1, "calendarEventObject"    # Lary;
    .param p2, "instanceBegin"    # J
    .param p4, "instanceEnd"    # J

    .prologue
    .line 57
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 61
    :cond_1
    new-instance v0, Larz;

    invoke-direct {v0}, Larz;-><init>()V

    .line 1188
    .local v0, "calendarInstanceObject":Larz;
    iget-object v1, p0, Lasc;->n:Ljava/lang/String;

    .line 63
    iput-object v1, v0, Larz;->H:Ljava/lang/String;

    .line 2097
    iget-object v1, p1, Lary;->i:Ljava/lang/String;

    .line 64
    iput-object v1, v0, Larz;->I:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lasc;->b()J

    move-result-wide v2

    iput-wide v2, v0, Larz;->J:J

    .line 66
    invoke-virtual {p1}, Lary;->b()J

    move-result-wide v2

    iput-wide v2, v0, Larz;->K:J

    .line 3057
    iget v1, p0, Lasc;->a:I

    .line 67
    iput v1, v0, Larz;->a:I

    .line 3061
    iget v1, p0, Lasc;->b:I

    .line 68
    iput v1, v0, Larz;->b:I

    .line 3065
    iget v1, p0, Lasc;->c:I

    .line 69
    iput v1, v0, Larz;->c:I

    .line 3069
    iget-object v1, p0, Lasc;->d:Ljava/lang/String;

    .line 70
    iput-object v1, v0, Larz;->d:Ljava/lang/String;

    .line 4025
    iget-boolean v1, p0, Lasw;->r:Z

    .line 71
    iput-boolean v1, v0, Larz;->e:Z

    .line 4129
    iget-wide v2, p0, Lasc;->h:J

    .line 72
    iput-wide v2, v0, Larz;->f:J

    .line 5113
    iget v1, p0, Lasc;->i:I

    .line 73
    iput v1, v0, Larz;->g:I

    .line 5121
    iget v1, p0, Lasc;->j:I

    .line 74
    iput v1, v0, Larz;->h:I

    .line 5137
    iget v1, p0, Lasc;->k:I

    .line 75
    iput v1, v0, Larz;->i:I

    .line 5155
    iget-boolean v1, p0, Lasc;->l:Z

    .line 76
    iput-boolean v1, v0, Larz;->j:Z

    .line 6077
    iget-wide v2, p0, Lasc;->f:J

    .line 77
    iput-wide v2, v0, Larz;->k:J

    .line 6180
    iget-object v1, p0, Lasc;->m:Ljava/util/Map;

    .line 78
    iput-object v1, v0, Larz;->l:Ljava/util/Map;

    .line 6196
    iget-wide v2, p0, Lasc;->o:J

    .line 79
    iput-wide v2, v0, Larz;->m:J

    .line 80
    invoke-virtual {p1}, Lary;->d()Z

    move-result v1

    iput-boolean v1, v0, Larz;->n:Z

    .line 81
    invoke-virtual {p1}, Lary;->e()J

    move-result-wide v2

    iput-wide v2, v0, Larz;->o:J

    .line 82
    invoke-virtual {p1}, Lary;->f()J

    move-result-wide v2

    iput-wide v2, v0, Larz;->p:J

    .line 83
    invoke-virtual {p1}, Lary;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Larz;->q:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lary;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Larz;->r:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lary;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Larz;->s:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lary;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Larz;->t:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lary;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Larz;->u:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lary;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Larz;->v:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lary;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Larz;->w:Ljava/lang/String;

    .line 7044
    iget-object v1, p1, Lary;->a:Ljava/lang/String;

    .line 90
    iput-object v1, v0, Larz;->x:Ljava/lang/String;

    .line 7048
    iget-object v1, p1, Lary;->b:Ljava/lang/String;

    .line 91
    iput-object v1, v0, Larz;->y:Ljava/lang/String;

    .line 7052
    iget-object v1, p1, Lary;->c:Ljava/lang/String;

    .line 92
    iput-object v1, v0, Larz;->z:Ljava/lang/String;

    .line 7060
    iget-object v1, p1, Lary;->d:Ljava/lang/String;

    .line 93
    iput-object v1, v0, Larz;->A:Ljava/lang/String;

    .line 7064
    iget-object v1, p1, Lary;->e:Ljava/lang/String;

    .line 94
    iput-object v1, v0, Larz;->B:Ljava/lang/String;

    .line 7068
    iget-object v1, p1, Lary;->f:Ljava/util/List;

    .line 95
    iput-object v1, v0, Larz;->C:Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Lary;->n()Z

    move-result v1

    iput-boolean v1, v0, Larz;->D:Z

    .line 7081
    iget-object v1, p1, Lary;->g:Ljava/util/List;

    .line 97
    iput-object v1, v0, Larz;->E:Ljava/util/List;

    .line 7089
    iget-object v1, p1, Lary;->h:Ljava/lang/String;

    .line 98
    iput-object v1, v0, Larz;->F:Ljava/lang/String;

    .line 7105
    iget-object v1, p1, Lary;->j:Ljava/lang/String;

    .line 99
    iput-object v1, v0, Larz;->G:Ljava/lang/String;

    .line 100
    iput-wide p2, v0, Larz;->L:J

    .line 101
    iput-wide p4, v0, Larz;->M:J

    goto/16 :goto_0
.end method
