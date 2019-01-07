.class public Lggs;
.super Ljava/lang/Object;
.source "DentryException.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lggs;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lggs;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static a(Lggs;)Lggs;
    .locals 3
    .param p0, "exception"    # Lggs;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 28
    if-eqz p0, :cond_0

    iget-object v0, p0, Lggs;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    .end local p0    # "exception":Lggs;
    :goto_0
    return-object p0

    .restart local p0    # "exception":Lggs;
    :cond_0
    new-instance p0, Lggs;

    .end local p0    # "exception":Lggs;
    const-string/jumbo v0, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->msg_space_upload_failed:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lggs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
