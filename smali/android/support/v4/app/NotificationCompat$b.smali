.class public final Landroid/support/v4/app/NotificationCompat$b;
.super Landroid/support/v4/app/NotificationCompat$n;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2354
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$n;-><init>()V

    .line 2355
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$b;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 2384
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$b;->a:Ljava/lang/CharSequence;

    .line 2385
    return-object p0
.end method

.method public final apply(Lcz;)V
    .locals 4
    .param p1, "builder"    # Lcz;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2395
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$b;->mBigContentTitle:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Landroid/support/v4/app/NotificationCompat$b;->mSummaryTextSet:Z

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$b;->mSummaryText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$b;->a:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Ldf;->a(Lcz;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2401
    :cond_0
    return-void
.end method
