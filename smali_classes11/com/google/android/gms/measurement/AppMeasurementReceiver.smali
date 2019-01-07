.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private ahH:Lcom/google/android/gms/measurement/internal/zzu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private zzbpp()Lcom/google/android/gms/measurement/internal/zzu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->ahH:Lcom/google/android/gms/measurement/internal/zzu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->ahH:Lcom/google/android/gms/measurement/internal/zzu;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->ahH:Lcom/google/android/gms/measurement/internal/zzu;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzbpp()Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzu;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
