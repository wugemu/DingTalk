.class public final Landroid/support/v4/app/NotificationCompat$a$a;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/app/PendingIntent;

.field private d:Z

.field private final e:Landroid/os/Bundle;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3227
    const v1, 0x7f020dfe

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ldi;Z)V

    .line 3228
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ldi;Z)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Ldi;
    .param p6, "allowGeneratedReplies"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3216
    iput-boolean v1, p0, Landroid/support/v4/app/NotificationCompat$a$a;->d:Z

    .line 3242
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$a$a;->a:I

    .line 3243
    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$a$a;->b:Ljava/lang/CharSequence;

    .line 3244
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$a$a;->c:Landroid/app/PendingIntent;

    .line 3245
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$a$a;->e:Landroid/os/Bundle;

    .line 3246
    const/4 v0, 0x0

    .line 3247
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$a$a;->f:Ljava/util/ArrayList;

    .line 3248
    iput-boolean v1, p0, Landroid/support/v4/app/NotificationCompat$a$a;->d:Z

    .line 3249
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/NotificationCompat$a;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 3318
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3319
    .local v8, "dataOnlyInputs":Ljava/util/List;, "Ljava/util/List<Ldi;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3320
    .local v10, "textInputs":Ljava/util/List;, "Ljava/util/List<Ldi;>;"
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$a$a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 3321
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldi;

    .line 4116
    .local v9, "input":Ldi;
    iget-boolean v0, v9, Ldi;->b:Z

    .line 4102
    if-nez v0, :cond_1

    .line 5088
    iget-object v0, v9, Ldi;->a:[Ljava/lang/CharSequence;

    .line 4103
    if-eqz v0, :cond_0

    .line 6088
    iget-object v0, v9, Ldi;->a:[Ljava/lang/CharSequence;

    .line 4103
    array-length v0, v0

    if-nez v0, :cond_1

    .line 6093
    :cond_0
    iget-object v0, v9, Ldi;->c:Ljava/util/Set;

    .line 4104
    if-eqz v0, :cond_1

    .line 7093
    iget-object v0, v9, Ldi;->c:Ljava/util/Set;

    .line 4105
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3322
    :goto_1
    if-eqz v0, :cond_2

    .line 3323
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4105
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3325
    :cond_2
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3329
    .end local v9    # "input":Ldi;
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v6, v1

    .line 3331
    .local v6, "dataOnlyInputsArr":[Ldi;
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v5, v1

    .line 3333
    .local v5, "textInputsArr":[Ldi;
    :goto_3
    new-instance v0, Landroid/support/v4/app/NotificationCompat$a;

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$a$a;->a:I

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$a$a;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$a$a;->c:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$a$a;->e:Landroid/os/Bundle;

    iget-boolean v7, p0, Landroid/support/v4/app/NotificationCompat$a$a;->d:Z

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ldi;[Ldi;Z)V

    return-object v0

    .line 3330
    .end local v5    # "textInputsArr":[Ldi;
    .end local v6    # "dataOnlyInputsArr":[Ldi;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldi;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldi;

    move-object v6, v0

    goto :goto_2

    .line 3332
    .restart local v6    # "dataOnlyInputsArr":[Ldi;
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldi;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldi;

    move-object v5, v0

    goto :goto_3
.end method
