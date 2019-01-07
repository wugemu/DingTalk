.class public interface abstract Lcsm;
.super Ljava/lang/Object;
.source "DayFormatter.java"


# static fields
.field public static final a:Lcsm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcsk;

    invoke-direct {v0}, Lcsk;-><init>()V

    sput-object v0, Lcsm;->a:Lcsm;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Ljava/lang/String;
.end method
