.class final Laun$11$1;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laun$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun$11;


# direct methods
.method constructor <init>(Laun$11;)V
    .locals 0
    .param p1, "this$1"    # Laun$11;

    .prologue
    .line 768
    iput-object p1, p0, Laun$11$1;->a:Laun$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 771
    iget-object v0, p0, Laun$11$1;->a:Laun$11;

    iget-object v0, v0, Laun$11;->a:Laun;

    invoke-static {v0}, Laun;->f(Laun;)V

    .line 772
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_tips_2"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 773
    return-void
.end method
