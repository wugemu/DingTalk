.class public final Landroid/support/v4/app/NotificationCompat$o;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/app/PendingIntent;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$o;->a:Ljava/util/ArrayList;

    .line 3772
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$o;->b:I

    .line 3774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$o;->d:Ljava/util/ArrayList;

    .line 3777
    const v0, 0x800005

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$o;->g:I

    .line 3778
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$o;->h:I

    .line 3779
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$o;->i:I

    .line 3781
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$o;->k:I

    .line 3791
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 3836
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3838
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3839
    const-string/jumbo v2, "actions"

    sget-object v3, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$m;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$o;->a:Ljava/util/ArrayList;

    .line 3841
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/support/v4/app/NotificationCompat$a;

    .line 3840
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/v4/app/NotificationCompat$a;

    invoke-interface {v3, v1}, Landroid/support/v4/app/NotificationCompat$m;->a([Landroid/support/v4/app/NotificationCompat$a;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3839
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3843
    :cond_0
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 3844
    const-string/jumbo v1, "flags"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$o;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3846
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->c:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 3847
    const-string/jumbo v1, "displayIntent"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$o;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3849
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3850
    const-string/jumbo v2, "pages"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$o;->d:Ljava/util/ArrayList;

    .line 3851
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    .line 3850
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3853
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 3854
    const-string/jumbo v1, "background"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$o;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3856
    :cond_4
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->f:I

    if-eqz v1, :cond_5

    .line 3857
    const-string/jumbo v1, "contentIcon"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$o;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3859
    :cond_5
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->g:I

    const v2, 0x800005

    if-eq v1, v2, :cond_6

    .line 3860
    const-string/jumbo v1, "contentIconGravity"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$o;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3862
    :cond_6
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 3863
    const-string/jumbo v1, "contentActionIndex"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$o;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3866
    :cond_7
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->i:I

    if-eqz v1, :cond_8

    .line 3867
    const-string/jumbo v1, "customSizePreset"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$o;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3869
    :cond_8
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->j:I

    if-eqz v1, :cond_9

    .line 3870
    const-string/jumbo v1, "customContentHeight"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$o;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3872
    :cond_9
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->k:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_a

    .line 3873
    const-string/jumbo v1, "gravity"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$o;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3875
    :cond_a
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->l:I

    if-eqz v1, :cond_b

    .line 3876
    const-string/jumbo v1, "hintScreenTimeout"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$o;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3878
    :cond_b
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->m:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 3879
    const-string/jumbo v1, "dismissalId"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$o;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    :cond_c
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->n:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 3882
    const-string/jumbo v1, "bridgeTag"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$o;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    :cond_d
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3886
    return-object p1
.end method

.method public final a(Landroid/support/v4/app/NotificationCompat$a;)Landroid/support/v4/app/NotificationCompat$o;
    .locals 1
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$a;

    .prologue
    .line 3922
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3923
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3669
    .line 4891
    new-instance v0, Landroid/support/v4/app/NotificationCompat$o;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$o;-><init>()V

    .line 4892
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$o;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$o;->a:Ljava/util/ArrayList;

    .line 4893
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->b:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$o;->b:I

    .line 4894
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->c:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$o;->c:Landroid/app/PendingIntent;

    .line 4895
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$o;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$o;->d:Ljava/util/ArrayList;

    .line 4896
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->e:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$o;->e:Landroid/graphics/Bitmap;

    .line 4897
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->f:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$o;->f:I

    .line 4898
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->g:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$o;->g:I

    .line 4899
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->h:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$o;->h:I

    .line 4900
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->i:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$o;->i:I

    .line 4901
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->j:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$o;->j:I

    .line 4902
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->k:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$o;->k:I

    .line 4903
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$o;->l:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$o;->l:I

    .line 4904
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->m:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$o;->m:Ljava/lang/String;

    .line 4905
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$o;->n:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$o;->n:Ljava/lang/String;

    .line 3669
    return-object v0
.end method
