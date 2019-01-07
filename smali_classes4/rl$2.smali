.class public final Lrl$2;
.super Ljava/lang/Object;
.source "MailCalendarUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/api/CalendarApi;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcma;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/sdk/api/CalendarApi;Ljava/lang/String;JILcma;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lrl$2;->a:Lcom/alibaba/alimei/sdk/api/CalendarApi;

    iput-object p2, p0, Lrl$2;->b:Ljava/lang/String;

    iput-wide p3, p0, Lrl$2;->c:J

    iput p5, p0, Lrl$2;->d:I

    iput-object p6, p0, Lrl$2;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lrl$2;->a:Lcom/alibaba/alimei/sdk/api/CalendarApi;

    iget-object v1, p0, Lrl$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->createCalendarIfNotExist(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lrl$2;->a:Lcom/alibaba/alimei/sdk/api/CalendarApi;

    iget-wide v2, p0, Lrl$2;->c:J

    iget v1, p0, Lrl$2;->d:I

    new-instance v4, Lrl$2$1;

    invoke-direct {v4, p0}, Lrl$2$1;-><init>(Lrl$2;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->updateAttendeeStatus(JILxv;)V

    .line 129
    return-void
.end method
