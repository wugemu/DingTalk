.class Lcom/google/firebase/iid/zzb$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bar:Lcom/google/firebase/iid/zzb;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzb;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzb$1;->bar:Lcom/google/firebase/iid/zzb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {p1}, Lcom/google/android/gms/iid/MessengerCompat;->zzc(Landroid/os/Message;)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzb$1;->bar:Lcom/google/firebase/iid/zzb;

    invoke-static {v1}, Lcom/google/firebase/iid/zzf;->zzdi(Landroid/content/Context;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/iid/zzb$1;->bar:Lcom/google/firebase/iid/zzb;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzb;->getPackageManager()Landroid/content/pm/PackageManager;

    sget v1, Lcom/google/firebase/iid/zzf;->aaI:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/google/firebase/iid/zzf;->aaH:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "FirebaseInstanceId"

    sget v2, Lcom/google/firebase/iid/zzf;->aaH:I

    sget v3, Lcom/google/firebase/iid/zzf;->aaI:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x4d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Message from unexpected caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " mine="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " appid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/iid/zzb$1;->bar:Lcom/google/firebase/iid/zzb;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzb;->zzm(Landroid/content/Intent;)V

    goto :goto_0
.end method
