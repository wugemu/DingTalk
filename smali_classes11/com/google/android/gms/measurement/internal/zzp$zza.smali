.class public Lcom/google/android/gms/measurement/internal/zzp$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field final synthetic ajA:Lcom/google/android/gms/measurement/internal/zzp;

.field private final ajB:Z

.field private final ajC:Z

.field private final mPriority:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzp;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajA:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->mPriority:I

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajB:Z

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajC:Z

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajA:Lcom/google/android/gms/measurement/internal/zzp;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajB:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajC:Z

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzp;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajA:Lcom/google/android/gms/measurement/internal/zzp;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajB:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajC:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzp;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajA:Lcom/google/android/gms/measurement/internal/zzp;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajB:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajC:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzp;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public zzj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajA:Lcom/google/android/gms/measurement/internal/zzp;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajB:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzp$zza;->ajC:Z

    move-object v4, p1

    move-object v5, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzp;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
