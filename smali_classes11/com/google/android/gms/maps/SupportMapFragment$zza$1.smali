.class Lcom/google/android/gms/maps/SupportMapFragment$zza$1;
.super Lcom/google/android/gms/maps/internal/zzt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/SupportMapFragment$zza;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afQ:Lcom/google/android/gms/maps/OnMapReadyCallback;

.field final synthetic agB:Lcom/google/android/gms/maps/SupportMapFragment$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/SupportMapFragment$zza;Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza$1;->agB:Lcom/google/android/gms/maps/SupportMapFragment$zza;

    iput-object p2, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza$1;->afQ:Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzt$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza$1;->afQ:Lcom/google/android/gms/maps/OnMapReadyCallback;

    new-instance v1, Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/OnMapReadyCallback;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V

    return-void
.end method
