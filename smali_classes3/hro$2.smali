.class public final Lhro$2;
.super Ljava/lang/Object;
.source "PikerMagician.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhro$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhro$a;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lhro$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lhro$2;->b:Lhro$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 124
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 1028
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v3, Lhro;->a:Ljava/util/Calendar;

    .line 125
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 126
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 129
    const-string/jumbo v2, ""

    .line 131
    .local v2, "timeString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lhro$2;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 137
    .end local v1    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    iget-object v3, p0, Lhro$2;->b:Lhro$a;

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lhro$2;->b:Lhro$a;

    invoke-interface {v3, v2}, Lhro$a;->pickCallback(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void

    .line 2028
    :catch_0
    move-exception v3

    sget-object v3, Lhro;->a:Ljava/util/Calendar;

    .line 134
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcog;->p(J)Ljava/lang/String;

    goto :goto_0
.end method
