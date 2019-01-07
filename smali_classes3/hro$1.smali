.class final Lhro$1;
.super Ljava/lang/Object;
.source "PikerMagician.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhro;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILhro$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhro$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lhro$a;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lhro$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lhro$1;->b:Lhro$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 48
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 49
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 52
    const/4 v4, 0x5

    invoke-virtual {v0, v4, p4}, Ljava/util/Calendar;->set(II)V

    .line 57
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lhro$1;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 59
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    .end local v1    # "date":Ljava/util/Date;
    .end local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v2, "dateString":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lhro$1;->b:Lhro$a;

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lhro$1;->b:Lhro$a;

    invoke-interface {v4, v2}, Lhro$a;->pickCallback(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void

    .line 61
    .end local v2    # "dateString":Ljava/lang/String;
    :catch_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcog;->o(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dateString":Ljava/lang/String;
    goto :goto_0
.end method
