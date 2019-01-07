.class abstract Lcom/google/android/gms/internal/zzaog$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation


# instance fields
.field final bfS:Z

.field final bfT:Z

.field final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaog$zzb;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzaog$zzb;->bfS:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaog$zzb;->bfT:Z

    return-void
.end method


# virtual methods
.method abstract zza(Lcom/google/android/gms/internal/zzaom;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract zza(Lcom/google/android/gms/internal/zzaoo;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract zzco(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
